FROM haskell:8.0.1

# Switch to app user
RUN useradd -d /opt/server/ -m app
RUN chown -R app:app /opt/server
USER app
WORKDIR /opt/server/
ENV PATH /opt/server/.local/bin:$PATH

# Add just the .cabal file to capture dependencies
COPY ./flex.cabal /opt/server/flex.cabal
COPY ./stack.yaml /opt/server/stack.yaml

# Docker will cache this command as a layer, freeing us up to
# modify source code without re-installing dependencies
RUN stack build --system-ghc --only-dependencies

# Add and Install Application Code
ADD ./ /opt/server/
RUN stack install --system-ghc

CMD ["flex-exe"]

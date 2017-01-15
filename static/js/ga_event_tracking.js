(function($) {
    "use strict"; // Start of use strict

    $("#basicPlan").click(function() {
        ga('send', {
            hitType: 'event',
            eventCategory: 'Button',
            eventAction: 'click',
            eventLabel: 'Basic Plan'
        });
    });

    $("#proPlan").click(function() {
        ga('send', {
            hitType: 'event',
            eventCategory: 'Button',
            eventAction: 'click',
            eventLabel: 'Pro Plan'
        });
    });
    $("#premiumPlan").click(function() {
        ga('send', {
            hitType: 'event',
            eventCategory: 'Button',
            eventAction: 'click',
            eventLabel: 'Premium Plan'
        });
    });

})(jQuery); // End of use strict

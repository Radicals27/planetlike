Rails.configuration.stripe = {
    :publishable_key => 'pk_test_z7tHaDoOKMZiSj6CSbdsws3V00X68kTAd8',
    :secret_key      => 'sk_test_1VJpylvIWpk5I4xpT1XisfTj006gVHeQj4'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
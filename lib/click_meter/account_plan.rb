#Section: Accounting
class ClickMeter::AccountPlan < ClickMeter::Base
  # Get detail of the plan used by this account. Valid only for MASTER key
  # Response:
  # {
  #     "name": "Large",
  #     "recurring": true,
  #     "recurringPeriod": 1,
  #     "maximumDatapoints": 100,
  #     "maximumGuests": 100,
  #     "monthlyEvents": 5000,
  #     "profileId": 3,
  #     "billingPeriodStart": "20150216000000",
  #     "billingPeriodEnd": "20150316000000",
  #     "allowedPersonalUrls": 10,
  #     "allowedPersonalDomains": 10
  # }
  get :take, '/account/plan'
end

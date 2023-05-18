resource "aws_budgets_budget" "zero" {
      name              = "zero"
      time_unit         = "MONTHLY"
      budget_type       = "COST"
      limit_unit        = "USD"
      limit_amount = "0.1"

      cost_types {
          include_credit             = false 
          include_discount           = true 
          include_other_subscription = true 
          include_recurring          = true 
          include_refund             = false 
          include_subscription       = true 
          include_support            = true 
          include_tax                = true 
          include_upfront            = true 
          use_amortized              = false 
          use_blended                = false 
        }

      notification {
          comparison_operator        = "GREATER_THAN" 
          notification_type          = "ACTUAL" 
          subscriber_email_addresses = [
              "star888s.oath@gmail.com",
            ] 
          subscriber_sns_topic_arns  = [] 
          threshold                  = 0.01 
          threshold_type             = "ABSOLUTE_VALUE" 
        }
    }
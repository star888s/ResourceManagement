resource "aws_budgets_budget" "dollars" {
      name              = "10$"
      time_unit         = "MONTHLY"
      budget_type       = "COST"
      limit_unit        = "USD"
      limit_amount = "10"

      notification {
          comparison_operator        = "GREATER_THAN" 
          notification_type          = "ACTUAL" 
          subscriber_email_addresses = [
              "star888s.oath@gmail.com",
            ] 
          subscriber_sns_topic_arns  = [] 
          threshold                  = 100 
          threshold_type             = "PERCENTAGE" 
        }
      notification {
          comparison_operator        = "GREATER_THAN" 
          notification_type          = "ACTUAL" 
          subscriber_email_addresses = [
              "star888s.oath@gmail.com",
            ] 
          subscriber_sns_topic_arns  = [] 
          threshold                  = 85 
          threshold_type             = "PERCENTAGE" 
        }
      notification {
          comparison_operator        = "GREATER_THAN" 
          notification_type          = "FORECASTED" 
          subscriber_email_addresses = [
              "star888s.oath@gmail.com",
            ] 
          subscriber_sns_topic_arns  = [] 
          threshold                  = 100 
          threshold_type             = "PERCENTAGE" 
        }
    }
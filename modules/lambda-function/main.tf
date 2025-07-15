
resource "aws_lambda_function" "chapa" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn
  filename         = "lambda_function_payload.zip"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")
  environment {
    variables = {
      DEMO_ENV = "true"
    }
  }
  tags = var.tags
}

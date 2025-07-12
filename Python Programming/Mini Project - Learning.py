print("Hello, World")

# Define the function
def add_three(input_var):
    output_var = input_var + 3
    return output_var

# Run the function with 10 as input
new_number = add_three(10)

# Check that the value is 13, as expected
print(new_number)

def get_pay(num_hours):
  # Pre-tax pay, based on receiving $15/hour
  # After-tax pay, based on being in 12% tax bracket
  pay_aftertax = num_hours * 15 * (1 - .12)
  return pay_aftertax

# Calculate pay based on working 40 hours
pay_fulltime = get_pay(32)
print(pay_fulltime)

def get_pay_with_more_inputs(num_hours, hourly_wage, tax_bracket):
  # Pre-tax pay
  pay_pretax = num_hours * hourly_wage
  # After-tax pay
  pay_aftertax = pay_pretax * (1 - tax_bracket)
  return pay_aftertax

higher_pay_aftertax = get_pay_with_more_inputs(40, 24, .22)
print(higher_pay_aftertax)

def tax(a, b, c):
  x = a*b
  y = x * (1-c)
  return y


sss = tax(40, 24, .22)
print(sss)

def evaluate_temp(temp):
  message = "Normal temperature."
  if temp > 38:
      message = "Fever!"
  return message

print(evaluate_temp(39))

def eva_temp(temp):
  if temp > 38:
    message = "Fever!"
  elif temp >35:
    message = "normal"
  else:
    message = "Low temperature"
  return message

print(eva_temp(34))


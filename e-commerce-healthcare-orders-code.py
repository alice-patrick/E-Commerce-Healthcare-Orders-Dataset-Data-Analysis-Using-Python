import pandas as pd
import ast

# Load the CSV file
file_path = r'C:\Users\User\Downloads\orders.csv'
data = pd.read_csv(r'C:\Users\User\Downloads\orders.csv')

# Convert date columns to datetime objects
data['Date Placed'] = pd.to_datetime(data['Date Placed'])
data['Date Delivered'] = pd.to_datetime(data['Date Delivered'], errors='coerce')
data['Date Returned'] = pd.to_datetime(data['Date Returned'], errors='coerce')

# Handle missing values
data['City'] = data['City'].fillna('Unknown')          # Replace missing values in 'City' column
data['State'] = data['State'].fillna('Unknown')        # Replace missing values in 'State' column
data['Remarks'] = data['Remarks'].fillna('No Remarks') # Replace missing values in 'Remarks' column

# Create new columns
# 1. Delivery Duration (in days)
data['Delivery Duration'] = (data['Date Delivered'] - data['Date Placed']).dt.days

# 2. Categorize Status
data['Status Category'] = data['Status'].apply(
    lambda x: 'Completed' if x == 'Delivered' else 'Returned' if x == 'Returned' else 'Other'
)

# 3. Extract the number of products from the Cart column
def extract_product_count(cart):
    try:
        items = ast.literal_eval(cart)
        return len(items)
    except (ValueError, SyntaxError):
        return 0

data['Product Count'] = data['Cart'].apply(extract_product_count)

# 4. Extract month and year from the Date Placed column
data['Order Month'] = data['Date Placed'].dt.month_name()
data['Order Year'] = data['Date Placed'].dt.year

# 5. Convert boolean column to descriptive values
data['isCOD'] = data['isCOD'].replace({True: 'Yes', False: 'No'})

# Save the cleaned dataset
cleaned_file_path = r'C:\Users\User\Downloads\cleaned_orders.csv'
data.to_csv(cleaned_file_path, index=False)

print(f"The cleaned dataset has been saved to {cleaned_file_path}.")

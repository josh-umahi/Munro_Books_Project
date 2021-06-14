# To run file ---> cd mock_apis; python combine_json.py; cd ../

files = [
    "best_of_paperback_fiction.json",
    "best_of_paperback_nonfiction.json",
    "best_of_hardcover_fiction.json",
]

combined = '[\n'

for file in files:
    with open(file) as fp:
        combined += fp.read() + ',\n'

combined = combined.rstrip(',\n')
combined += '\n]'

with open('combined.json', 'w') as fp:
    fp.write(combined)

# Nathaniel M Hawkins, Shaun Scholes, Madhavi Bajekal, Hande Love, Martin O'Flaherty, Rosalind Raine, Simon Capewell, 2024.

import sys, csv, re

codes = [{"code":"7925312","system":"readv2"},{"code":"7926200","system":"readv2"},{"code":"7925300","system":"readv2"},{"code":"7925311","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('coronary-revascularisation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["single-coronary-revascularisation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["single-coronary-revascularisation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["single-coronary-revascularisation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

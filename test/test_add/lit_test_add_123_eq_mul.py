# This deomonstrate that we can have multiple language within a test suite
  
# RUN: (%add123 && python3 %s) | grep "66" 
print(1*2*3)
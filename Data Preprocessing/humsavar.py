import collections

import re

words = re.findall(r'\w+', open('humsavar.txt').read().lower())
most_common = collections.Counter(words).most_common(100
                                )
print(most_common)
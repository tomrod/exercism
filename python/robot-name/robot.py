import string
import random

class Robot():
	def __init__(self):
		self.reset()
	def reset(self):
		if not hasattr(self,'name'): self.name = ''
		lets = [string.ascii_uppercase]*2
		nums = [string.digits]*3
		rc = random.choice
		namenew =  ''.join(map(rc,lets)+map(rc,nums))
		if namenew == self.name:
			self.reset()
		else:
			self.name = namenew
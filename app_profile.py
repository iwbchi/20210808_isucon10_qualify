from pathlib import Path
import pstats
import glob
PROFILE_DIR = '/home/isucon/profile'
filenames = glob.glob(str(Path(PROFILE_DIR) / Path('*')))
stats = pstats.Stats()
for filename in filenames:
    stats.add(filename)
stats.sort_stats('cumtime')
stats.print_stats()

# THIS IS THE MAIN CONFIGUARATION FILE - WHERE REAL WORK IS DONE

import lit.formats

config.name = 'Test 123 Maths'
config.test_format = lit.formats.ShTest(True)

config.suffixes = ['.c', '.cpp', '.cc', '.py']

config.test_source_root = os.path.dirname(__file__)

# by default the 'Output' folder is created next to the test case, inside the test suite directory
# this line tells lit to put it inside the build folder (where the object file is). 
config.test_exec_root = os.path.join(config.build_dir, 'test')

# here I am creating a custom substitution which represent the path to the binaries I am testing
config.substitutions.append(('%add123',
    os.path.join(config.build_dir, 'lit-cpp-add')))
config.substitutions.append(('%mul123',
    os.path.join(config.build_dir, 'lit-cpp-mul')))


config.suffixes = ['']
config.enable_bindings_python = 1
config.do_whatever_i_want = "i am humble" # "conquer the world"
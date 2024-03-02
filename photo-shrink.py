import os
import subprocess

# inspired by this post
# https://guides.wp-bullet.com/batch-resize-images-using-linux-command-line-and-imagemagick/

def main():
    # the maximum length in any direction (width or height)
    # aspect ratio will automatically be maintained by the library
    MAX_LEN = "800" 
    size_parm = MAX_LEN+'x'+MAX_LEN+'>' #https://legacy.imagemagick.org/Usage/resize/#shrink
    
    # files in the input directory will remain untouched.
    # files with identical names will be created in the output directory.
    # files in the output directory are OVERWRITTEN (if they already exist and the names match)
    PROJECT_DIR = os.path.dirname(os.path.realpath(__file__))
    IN_DIR = PROJECT_DIR + '/photo-shrink/in'
    OUT_DIR = PROJECT_DIR + '/photo-shrink/out'

    # show what is about to happen
    print ('Input: ', IN_DIR)
    print ('Output:', OUT_DIR)
    print ('Resize Geometry:', size_parm)

    for filename in os.listdir(IN_DIR):
        # get full file paths
        infile =  os.path.join(IN_DIR, filename)
        outfile = os.path.join(OUT_DIR, filename)

        # convert and print output
        subprocess.check_output(['convert', infile, '-verbose', '-resize', size_parm, outfile])

         
if __name__ == '__main__':
    main()

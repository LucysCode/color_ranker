def generate_random_hex_color
    "#" + "%06x" % (rand * 0xffffff)
end

# utility file to keep this method modular and reusable
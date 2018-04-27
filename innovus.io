# This file specifies how the pads are placed
# The name of each pad here has to match the
# name in the verilog code
# The target padframe has 4 corners cells and 40 side pads
# Each side should have at least 1 vdd/gnd pair
# Use filler cells (PADNC) to fill up each side to 10 pads each
# Each pad instance needs it's orientation specified


( globals
   version = 3
   space=10
   io_order = default
)

(iopin
  (top
    (pin name = hclk     offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = hrst   offset=60    layer=3    width=0.9    depth=0.9)
  )
  (left
    (pin name = hrdata_master[7] offset=20    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[6] offset=30    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[5] offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[4] offset=50    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[3] offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[2] offset=70    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[1] offset=80    layer=3    width=0.9    depth=0.9)
    (pin name = hrdata_master[0] offset=90    layer=3    width=0.9    depth=0.9)
  )
  (bottom
    (pin name = fifo_empty    offset=20    layer=3    width=0.9    depth=0.9)
    (pin name = fifo_full     offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = transmit      offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = write_enable  offset=80    layer=3    width=0.9    depth=0.9)
  )
  (right
    (pin name = hready_master    offset=40    layer=3    width=0.9    depth=0.9)
    (pin name = hresp_master   offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = hwrite_slave   offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = hready_slave   offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = hwrite_master   offset=60    layer=3    width=0.9    depth=0.9)
    (pin name = hreadyout_slave   offset=60    layer=3    width=0.9    depth=0.9)
  )
)
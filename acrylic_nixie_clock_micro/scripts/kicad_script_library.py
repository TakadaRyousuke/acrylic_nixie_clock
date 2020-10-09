#coding:utf-8
# library for KICAD script
# 2020/2/29 powertimer811

import pcbnew



# ===============================================
# arrange LED in 8 * 8 matrix
# 2020/01/01 powertimer811
# This script is for arranging specified electronic components in a matrix.

# --- Usage --- #
# Specify the following arguments and use the function.

# --- Argument explanation --- #
# board           :: Define board = pcbnew.GetBoard() in main() and specify this board.
# parts_head      :: Specify the alphabet of electronic parts. For example, if you want to arrange D1 ~ D8, specify "D" in this argument.
# parts_num_range :: Specify the number of electronic parts. For example, if you want to arrange D1 ~ D8, specify [1, 8] in this argument.
# matrix_size     :: The matrix size when arranging in a matrix. [x, y] (pieces).
# grid_moment     :: The interval between electronic components. Arrange at the interval of [x, y] (mm).
# offset          :: The coordinates of the first electronic component. [x, y] (mm)
# angle           :: Specify the rotation angle of the electronic component. (degree)


def arrange_in_matrix( board, parts_head, parts_num_range, matrix_size, grid_moment, offset, angle):
  msx, msy = matrix_size
  gmx, gmy = grid_moment
  ox ,  oy  = offset
  ps ,  pf  = parts_num_range

  print("---------------------------")
  print("get Parts reference")
  D = [ board.FindModuleByReference( parts_head+str(i)) for i in range(ps, pf+1)]

  print("display Parts in N*N matrix")
  for iy in range(msy):
    for ix in range(msx):
      num = iy*msx + ix
      D[num].SetPosition(pcbnew.wxPointMM(ox+ix*gmx, oy+iy*gmy))
      D[num].SetOrientation( angle*10.0)



# arrange LED in 8*8 matrix
#2020/01/01 powertimer811

# --- Usage --- #
# Specify the following arguments and use the function.

# --- Argument explanation --- #
# board           :: Define board = pcbnew.GetBoard() in main() and specify this board.
# parts_head      :: Specify the alphabet of electronic parts. For example, if you want to arrange D1 ~ D8, specify "D" in this argument.
# parts_num_range :: Specify the number of electronic parts. For example, if you want to arrange D1 ~ D8, specify [1, 8] in this argument.
# silk_moment     :: Relative change of position(mm)
# angle           :: Specify the rotation angle of the electronic component. (degree)



def change_silk_position( board, parts_head, parts_num_range, silk_moment, angle):
  ps ,  pf  = parts_num_range
  mx ,  my  = silk_moment


  print("---------------------------")
  print("get Parts reference")
  D = [ board.FindModuleByReference( parts_head+str(i)) for i in range(ps, pf+1)]

  print("change silk position")
  for d in D:
    dpos = d.GetPosition()
    dx = dpos[0] / 1000000.0
    dy = dpos[1] / 1000000.0
    ref = d.Reference()
    ref.SetPosition(pcbnew.wxPointMM(dx+mx, dy+my))
    ref.SetTextAngle( angle*10)
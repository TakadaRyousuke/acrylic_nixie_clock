# for led_marix_reflow
# 2020/2/29 powertimer811


#--- USAGE ---#
# Please execute KICAD python terminal
# >>> cd C:\Users\owner\Documents\kicad\led_matrix_reflow\scripts
# >>> execfile("main.py")


import pcbnew
import kicad_script_library as ksl

board = pcbnew.GetBoard()
pcb = board.GetFileName()



if __name__=="__main__":
  P = 2.54

# arrange_in_matrix( board, parts_head, parts_num_range, matrix_size, grid_moment, offset, angle):
# change_silk_position( board, parts_head, parts_num_range, silk_moment, angle):

#  ksl.arrange_in_matrix( board, "D", [ 2,  65], [ 8, 8], [P*1.25, P*2.0], [P*31, P*24], 90)
#  ksl.arrange_in_matrix( board, "D", [66, 129], [ 8, 8], [P*1.25, P*2.0], [P*21, P*24], 90)
#  ksl.change_silk_position( board, "D", [1, 80], [-P*1.5, P*0], 90)
#  ksl.change_silk_position( board, "Q", [2, 25], [-P*1.5, P*0], 90)


  ksl.arrange_in_matrix( board, "D", [  1, 10], [ 2, 5], [ 8, 6], [  0, 0], 180)
  ksl.arrange_in_matrix( board, "D", [ 11, 20], [ 2, 5], [ 8, 6], [ 20, 0], 180)
  ksl.arrange_in_matrix( board, "D", [ 21, 30], [ 2, 5], [ 8, 6], [ 40, 0], 180)
  ksl.arrange_in_matrix( board, "D", [ 31, 40], [ 2, 5], [ 8, 6], [ 60, 0], 180)
  ksl.arrange_in_matrix( board, "D", [ 41, 50], [ 2, 5], [ 8, 6], [ 80, 0], 180)
  ksl.arrange_in_matrix( board, "D", [ 51, 60], [ 2, 5], [ 8, 6], [100, 0], 180)

#  ksl.arrange_in_matrix( board, "Q", [ 2,  17], [16, 1], [P*1.25, 0], [P*21.00, P*37.50],  0)

#  ksl.arrange_in_matrix( board, "R", [ 23,  38], [16, 1], [P*1.25, 0], [P*20.75, P*33.25],-90)
  


function LPM(degree,target,variable)

  sum((target - variable[variable.<=target]).^degree)/length(variable)

end

function UPM(degree,target,variable)

  sum((variable[variable.>target] - target).^degree)/length(variable)

end

function Co_LPM(degree_x,degree_y,x,y,target_x,target_y)
  new_x=target_x-x;new_y=target_y-y
  new_x[new_x.<0]= 0;new_y[new_y.<0]= 0
  new_x[new_x.>0]= new_x[new_x.>0].^degree_x
  new_y[new_y.>0]= new_y[new_y.>0].^degree_y
  return(sum(new_x.*new_y)/length(x))

end

function Co_UPM(degree_x,degree_y,x,y,target_x,target_y)
  new_x=x-target_x;new_y=y-target_y
  new_x[new_x.<=0]= 0;new_y[new_y.<=0]= 0
  new_x[new_x.>0]= new_x[new_x.>0].^degree_x
  new_y[new_y.>0]= new_y[new_y.>0].^degree_y
  return(sum(new_x.*new_y)/length(x))

end

function D_UPM(degree_x,degree_y,x,y,target_x,target_y)
  new_x=target_x-x;new_y=y-target_y
  new_x[new_x.<0]= 0;new_y[new_y.<=0]= 0
  new_x[new_x.>0]= new_x[new_x.>0].^degree_x
  new_y[new_y.>0]= new_y[new_y.>0].^degree_y
  return(sum(new_x.*new_y)/length(x))

end

function D_LPM(degree_x,degree_y,x,y,target_x,target_y)
  new_x=x-target_x;new_y=target_y-y
  new_x[new_x.<=0]= 0;new_y[new_y.<0]= 0
  new_x[new_x.>0]= new_x[new_x.>0].^degree_x
  new_y[new_y.>0]= new_y[new_y.>0].^degree_y
  return(sum(new_x.*new_y)/length(x))

end

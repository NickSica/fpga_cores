if((chip_id ==0) && (region_id == 0)) //NPS0
begin	//region space
	reg_rt_region[0][vc_num][1]=3;
	reg_rt_region[1][vc_num][1]=3;
	reg_rt_region[2][vc_num][1]=3;
	reg_rt_region[3][vc_num][1]=3;
	//local space
	reg_rt_local[0][vc_num][1]=1;
	reg_rt_local[0][vc_num][2]=2;
	reg_rt_local[0][vc_num][3]=3;
	reg_rt_local[1][vc_num][0]=0;
	reg_rt_local[1][vc_num][2]=2;
	reg_rt_local[1][vc_num][3]=3;
	reg_rt_local[2][vc_num][0]=0;
	reg_rt_local[2][vc_num][1]=1;
	reg_rt_local[2][vc_num][3]=3;
	reg_rt_local[3][vc_num][0]=0;
	reg_rt_local[3][vc_num][1]=1;
	reg_rt_local[3][vc_num][2]=2;
end
if((chip_id ==0) && (region_id == 1)) //NPS1
begin	//region space
	reg_rt_region[0][vc_num][0]=1;
	reg_rt_region[1][vc_num][0]=1;
	reg_rt_region[2][vc_num][0]=1;
	reg_rt_region[3][vc_num][0]=1;
	//local space
	reg_rt_local[0][vc_num][1]=1;
	reg_rt_local[0][vc_num][2]=2;
	reg_rt_local[0][vc_num][3]=3;
	reg_rt_local[1][vc_num][0]=0;
	reg_rt_local[1][vc_num][2]=2;
	reg_rt_local[1][vc_num][3]=3;
	reg_rt_local[2][vc_num][0]=0;
	reg_rt_local[2][vc_num][1]=1;
	reg_rt_local[2][vc_num][3]=3;
	reg_rt_local[3][vc_num][0]=0;
	reg_rt_local[3][vc_num][1]=1;
	reg_rt_local[3][vc_num][2]=2;
end

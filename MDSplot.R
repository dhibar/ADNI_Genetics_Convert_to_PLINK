jpeg("mdsplot.jpg", width = 8.5, height = 11, units = "in", bg = "white" , res=150, quality=100)

	
	mds.cluster = read.csv(as.character("HM3mds2R.mds.csv"), header=T);
	
	ceu=which(mds.cluster$FID=="CEU")
	chb=which(mds.cluster$FID=="CHB")
	yri=which(mds.cluster$FID=="YRI")
	tsi=which(mds.cluster$FID=="TSI")
	jpt=which(mds.cluster$FID=="JPT")
	chd=which(mds.cluster$FID=="CHD")
	mex=which(mds.cluster$FID=="MEX")
	gih=which(mds.cluster$FID=="GIH")
	asw=which(mds.cluster$FID=="ASW")
	lwk=which(mds.cluster$FID=="LWK")
	mkk=which(mds.cluster$FID=="MKK")
	
	pops=c(ceu, chb, yri, tsi, jpt, chd, mex, gih, asw, lwk, mkk)
	
	#initialize color vector
	colors=rep("red",length(mds.cluster$C2))
	colors[ceu]="lightblue"
	colors[chb]="brown"
	colors[yri]="yellow"
	colors[tsi]="green"
	colors[jpt]="purple"
	colors[chd]="orange"
	colors[mex]="grey50"
	colors[gih]="black"
	colors[asw]="darkolivegreen"
	colors[lwk]="magenta"
	colors[mkk]="darkblue"

	#plot(c(mds.cluster$C2[-pops],mds.cluster$C2[pops])), c(rev(mds.cluster$C1[-pops]),rev(mds.cluster$C1[pops])), col=colors, ylab="Dimension 1", xlab="Dimension 2",pch=20)
	plot(rev(mds.cluster$C2), rev(mds.cluster$C1), col=rev(colors), ylab="Dimension 1", xlab="Dimension 2",pch=20)
	legend("topright", c("My Sample", "CEU", "CHB", "YRI", "TSI", "JPT", "CHD", "MEX", "GIH", "ASW","LWK", "MKK"), fill=c("red", "lightblue", "brown", "yellow", "green", "purple", "orange", "grey50", "black", "darkoliv egreen", "magenta", "darkblue"))
	
dev.off()

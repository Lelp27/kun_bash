param ($mkDB=$null)
#db를 만들때는 $ture 뒤에입력

docker run --name minimap2 -d -it -v ${PWD}:/home/kun -w /home/kun biocontainers/minimap2:v2.15dfsg-1-deb_cv1
docker run --name samtools -d -it -v ${PWD}:/home/kun -w /home/kun biocontainers/samtools:v1.9-4-deb_cv1

if( $mkDB ){
	docker exec minimap2 ./git/kun_bash/mkDB.sh
	}
else{}
docker exec minimap2 ./git/kun_bash/2.minimap2.sh
docker exec samtools ./git/kun_bash/3.sam_sort.sh


docker stop minimap2, samtools
docker rm minimap2, samtools
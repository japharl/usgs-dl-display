use HTTP::Tiny;
use File::Path qw/make_path/;

my $base = shift;
my $zoom = shift; 
my $max_x = shift;
my $max_y = shift;

print "$base $zoom $max_x $max_y \n";

my $i;
my $j;
for ($i=0; $i <= $max_x ; $i++){
  for ($j=0; $j <= $max_y ; $j++){
    print "$i $j \n";
    sleep(2);
    make_path( 'data/' . $base . '/'. $zoom .'/' . $i . '/' , {verbose=>1});
    my $r = HTTP::Tiny->new->mirror('http://basemap.nationalmap.gov/arcgis/rest/services/' . $base . '/MapServer/tile/' . $zoom . '/' . $i . '/' . $j
 , 'data/' . $base . '/' .  $zoom . '/' . $i .'/' . $j);
    die "Failed!\n" unless $r->{success};
  }
}

__END__

This code downloads the necessary png images files and puts them in an appropriate directory...

base = See services @ http://basemap.nationalmap.gov/arcgis/rest/services (eg: USGSTopo )

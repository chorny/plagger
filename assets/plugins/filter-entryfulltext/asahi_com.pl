sub handle {
    my($self, $args) = @_;
    $args->{entry}->link =~ qr!^http://www\.asahi\.com/!;
}

sub extract_body {
    my($self, $args) = @_;
    ( $args->{content} =~ /<!-- Start of Kiji -->(.*)<!-- End of Kiji -->/s )[0];
}

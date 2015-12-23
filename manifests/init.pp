# = Class: dashing_instances_config
#

class dashing_instances_config(
    $dashing_instances    = {},
    ) {

    Class['dashing'] -> Dashing::Instance<||>
    include dashing
    create_resources('dashing::instance',  $dashing_instances)
}
# = Class: dashing_instances_config
#

class dashing_instances_config(
    $dashing_instances    = {},
    ) {

    # ensure the bundle gem is instaled as its needed by the dashing instance
    ensure_resource ('package', 'bundle', { ensure => 'latest', provider => 'gem'})

    # create default for create_resource calls
    $create_default = {
        'require' => 'Package[bundle]'
    }

    Class['dashing'] -> Dashing::Instance<||>
    include dashing
    create_resources('dashing::instance',  $dashing_instances, $create_default)
}
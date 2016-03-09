var nodes = [
{id: 1, label: 'vArray', title: 'Name:LAB_VARRAY_CLUSTER1 <br> Team: ViPR', group: 1, shape: 'square'},
{id: 11, label: 'vStoragePool', title: 'Name:LAB_VNX2903_VPLEX1_RECOVERPOINT_TARGET <br> Team: ViPR', group: 1, shape: 'dot'},
{id: 12, label: 'vStoragePool', title: 'Name:LAB_VNX2903_VPLEX1_RECOVERPOINT_SOURCE <br> Team: ViPR', group: 1, shape: 'dot'},
{id: 13, label: 'vStoragePool', title: 'Name:LAB_VNX2903_VPLEX1_VPOOL <br> Team: ViPR', group: 1, shape: 'dot'},
{id: 2, label: 'vArray', title: 'Name:LAB_VNX_4981 <br> Team: ViPR', group: 1,  shape: 'square'},
{id: 21, label: 'vStoragePool', title: 'Name:LAB_VNX_4981 <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 22, label: 'vStoragePool', title: 'Name:vpooool <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 3, label: 'vArray', title: 'Name:LAB_VNX2903 <br> Team: ViPR', group: 1,  shape: 'square'},
{id: 31, label: 'vStoragePool', title: 'Name:LAB_VNX2903_VPOOL <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 221, label: 'host', title: 'Name:10.247.139.65 <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 211, label: 'host', title: 'Name:10.247.139.143 <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 212, label: 'host', title: 'Name:10.247.139.65 <br> Team: ViPR', group: 1,  shape: 'dot'},
{id: 311, label: 'host', title: 'Name:dummy.emc.com <br> Team: ViPR', group: 1,  shape: 'dot'}
    ];
    // create an array with edges
var edges = [
{from: 1, to: 11},
{from: 1, to: 12},
{from: 1, to: 13},
{from: 2, to: 21},
{from: 2, to: 22},
{from: 3, to: 31},
{from: 1, to: 2},
{from: 2, to: 3},
{from: 1, to: 3},
{from: 22, to: 221},
{from: 21, to: 211},
{from: 21, to: 212},
{from: 31, to: 311}
    ];
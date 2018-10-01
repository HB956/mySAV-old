
console.log("hello");

const vue = new Vue({
    el: '#vue',
    data: {
        editModal: false,
        cases: gon.cases,
        columns: [
            {
                title: "Etat",
                key: "state",
                align: 'center',
                width: 100
            },
            {
                title: "Order",
                key: "order",
                align: 'center',
                width: 90
            },
            {
                title: "Ticket",
                key: "ticket",
                align: 'center',
                width: 80
            },
            {
                title: "Client",
                key: "client",
                align: 'center'
            },
            {
                title: "Adresse",
                key: "address",
                align: 'center'
            },
            {
                title: "Suivi",
                key: "tracking",
                align: 'center'
            },
            {
                title: "Sujet",
                key: "subject",
                align: 'center'
            },
            {
                title: "Notes",
                key: "note",
                align: 'center'
            },
            {
                title: "Enquête",
                key: "inquiry",
                align: 'center',
                width: 110
            },
            {
                title: "Action",
                key: "action",
                align: 'center'
            },
            {
                title: 'Action',
                key: 'action',
                width: 150,
                align: 'center',
                render: (h, params) => {
                    return h('div', [
                        h('Button', {
                            props: {
                                type: 'primary',
                                size: 'small'
                            },
                            style: {
                                marginRight: '5px'
                            },
                            on: {
                                click: () => {
                                    console.log(this)
                                    vue.show(params.index);
                                }
                            }
                        }, 'View'),
                        h('Button', {
                            props: {
                                type: 'error',
                                size: 'small'
                            },
                            on: {
                                click: () => {
                                    this.remove(params.index);
                                }
                            }
                        }, 'Delete')
                    ]);
                }
            },
        ]
    },
    methods: {
        show(index) {
            console.log(index);
            this.editModal = true;
        },
        updateCase() {
            console.log('UPDATE');
        }
    }
});


window.vue = vue;
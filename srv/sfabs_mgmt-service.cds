using fluidra.cap.sfmgmt as sfmgmt from '../db/sfabs_mgmt-service';

service sfabs_mgmt{

    @odata.draft.enabled
    
    entity registry as projection on sfmgmt.registry {
    
        ID,
        @Common.Label: 'Email'
        email,
        @Common.Label: 'Company Code'
        companyid,
        @Common.Label: 'Month'
        month,
        @Common.Label: 'Year'
        year,
        hours.absMen as absMen,
        hours.absWomen as absWomen,
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        cast ( email || '-' || month || '/' || year || '-' || companyid as String ) as HeaderTitle
    };

    @odata.draft.enabled
    entity RegistryView as projection on registry;

    entity hours as select from sfmgmt.hours;
    
    
}
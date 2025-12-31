namespace fluidra.cap.sfmgmt;
using {
    cuid,
    managed
} from '@sap/cds/common';

entity registry : cuid, managed {
    key email     : String(255);
    key companyid : String(4);
    key month     : String(2);
    key year      : String(4);
        hours     : Composition of one hours
                        on hours.registry_ID = $self.ID
}

entity hours : managed {
    key registry_ID : UUID;
        absMen      : String(4);
        absWomen    : String(4);
}

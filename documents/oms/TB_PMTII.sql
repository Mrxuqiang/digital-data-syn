/*
================================================================================
��ṹ����:TB_PMTII
��ṹ����:��ȯ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTII;
drop index AK_TB_PMTII;
drop table TB_PMTII;
create table TB_PMTII  (
   PMTII_ID             INTEGER                         not null,  /*��ȯ������ID    */
   PMTII001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTII002             INTEGER                         not null,  /*ȯ��ID            */
   PMTII003             VARCHAR2(10)                            ,  /*ȯ������          */
   PMTII004             VARCHAR2(1)                             ,  /*������ȯ          */
   PMTII005             NUMBER(12,2)                            ,  /*�ֽ��            */
   PMTII006             NUMBER(12,2)                            ,  /*��ȯ��            */
   PMTII007             VARCHAR2(1)                             ,  /*��Ա�Ƿ���֣�0.�����֣�1.���֣�*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER,                                    /*����״̬          */
   constraint PK_TB_PMTII primary key (PMTII_ID)
);
create sequence SEQ_TB_PMTII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTII to public;
grant index  on TB_PMTII to public;
grant update on TB_PMTII to public; 
grant delete on TB_PMTII to public;  
grant insert on TB_PMTII to public; 
grant select on SEQ_TB_PMTII to public;   
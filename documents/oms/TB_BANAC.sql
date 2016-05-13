/*
================================================================================
��ṹ����:TB_BANAC
��ṹ����:���˼�¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANAC;
drop index AK_TB_BANAC;
drop table TB_BANAC;
create table TB_BANAC  (
   BANAC_ID             INTEGER                         not null,  /*��¼��ID               */
   BANAC001             INTEGER                          not null,  /*�˻����ID             */
   BANAC002             INTEGER,                                    /*��λ������ID           */
   BANAC003             INTEGER ,                                    /*���з�����ID           */
   BANAC004             INTEGER,                                   /*�������               */
   BANAC005             DATE,                                        /*��������               */
   BANAC006             INTEGER,                                   /*������                 */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_BANAC primary key (BANAC_ID)
);
create unique index AK_TB_BANAC on TB_BANAC (BANAC001,BANAC002,BANAC003,BANAC004);
create sequence SEQ_TB_BANAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAC to public;
grant index  on TB_BANAC to public;
grant update on TB_BANAC to public; 
grant delete on TB_BANAC to public;  
grant insert on TB_BANAC to public; 
grant select on SEQ_TB_BANAC to public;   
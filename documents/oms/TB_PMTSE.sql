��ṹ����:TB_PMTSE
��ṹ����:����ֱ����������Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTSE;
drop index AK_TB_PMTSE;
drop table TB_PMTSE;


create table TB_PMTSE  (
   PMTSE_ID             INTEGER                         not null,  /*����ֱ����Чʱ��ID*/
   PMTSE001             INTEGER                         not null,  /*����ֱ��������ID  */
   PMTSE002             DATE                            not null,  /*��ʼ����          */
   PMTSE003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTSE004             DATE                            not null,  /*��������          */
   PMTSE005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTSE primary key (PMTSE_ID)
);
create unique index AK_TB_PMTSE on TB_PMTSE (PMTSE001,PMTSE002,PMTSE003);
create sequence SEQ_TB_PMTSE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSE to public;
grant index  on TB_PMTSE to public;
grant update on TB_PMTSE to public; 
grant delete on TB_PMTSE to public;  
grant insert on TB_PMTSE to public; 
grant select on SEQ_TB_PMTSE to public;   

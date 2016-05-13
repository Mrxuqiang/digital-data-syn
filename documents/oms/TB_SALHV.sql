/*
================================================================================
��ṹ����:TB_SALHV
��ṹ����:�ŵ�ҵ����̯�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHV;
drop index AK_TB_SALHV;
drop table TB_SALHV;
create table TB_SALHV  (
   SALHV_ID             INTEGER                         not null,  /*�ŵ�ҵ����̯�ӱ�ID */
   SALHV001             INTEGER                         not null,  /*�ŵ�ҵ����̯��ID   */
   SALHV002             INTEGER                         not null,  /*Ӫ����֯ID         */
   SALHV003             NUMBER(18,3)                    not null,  /*��̯���           */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SALHV primary key (SALHV_ID)
);
create unique index AK_TB_SALHV on TB_SALHV (SALHV001,SALHV002,FLAG);
create sequence SEQ_TB_SALHV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHV to public;
grant index  on TB_SALHV to public;
grant update on TB_SALHV to public; 
grant delete on TB_SALHV to public;  
grant insert on TB_SALHV to public; 
grant select on SEQ_TB_SALHV to public;   
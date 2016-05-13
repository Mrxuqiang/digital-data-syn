/*
================================================================================
��ṹ����:TB_AGEBA
��ṹ����:���տ�ŷ����̻���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGEBA;
drop index AK_TB_AGEBA;
drop table TB_AGEBA;
create table TB_AGEBA  (
   AGEBA_ID             INTEGER                         not null,  /*���տ�ŷ����̻�ID        */
   AGEBA001             INTEGER                         not null,  /*����ID                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGEBA primary key (AGEBA_ID)
);
create unique index AK_TB_AGEBA on TB_AGEBA (AGEBA001);
create sequence SEQ_TB_AGEBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEBA to public;
grant index  on TB_AGEBA to public;
grant update on TB_AGEBA to public; 
grant delete on TB_AGEBA to public;  
grant insert on TB_AGEBA to public; 
grant select on SEQ_TB_AGEBA to public;   
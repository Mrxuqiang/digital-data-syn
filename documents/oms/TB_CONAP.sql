/*
================================================================================
��ṹ����:TB_CONAP
��ṹ����:��ͬԤ�����뼰չ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAP;
drop index AK_TB_CONAP;
drop table TB_CONAP;
create table TB_CONAP  (
   CONAP_ID             INTEGER                         not null,  /*��ͬԤ���Żݶ�ID    */
   CONAP001             VARCHAR2(30)                    not null,  /*Ԥ�����            */
   CONAP002             VARCHAR2(30)                    not null,  /*Ԥ���·�            */
   CONAP003             VARCHAR2(30)                    not null,  /*Ԥ���·�����        */
   CONAP004             VARCHAR2(30)                    not null,  /*Ԥ�㵥λ����        */
   CONAP005             VARCHAR2(30)                    not null,  /*Ԥ�㵥λ����        */
   CONAP006             VARCHAR2(30)                    not null,  /*Ԥ�����ʹ���        */
   CONAP007             VARCHAR2(30)                    not null,  /*Ԥ����������        */
   CONAP008             VARCHAR2(30),                              /*Ԥ��汾            */
   CONAP009             VARCHAR2(30),                              /*Ԥ���Ŀ����        */
   CONAP010             VARCHAR2(30),                              /*Ԥ���Ŀ��������    */
   CONAP011             NUMBER(12,2),                              /*Ԥ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAP primary key (CONAP_ID)
);
create unique index AK_TB_CONAP on TB_CONAP (CONAP001,CONAP002,CONAP004,CONAP006,CONAP008);
create sequence SEQ_TB_CONAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAP to public;
grant index  on TB_CONAP to public;
grant update on TB_CONAP to public; 
grant delete on TB_CONAP to public;  
grant insert on TB_CONAP to public; 
grant select on SEQ_TB_CONAP to public;  


/*
================================================================================
��ṹ����:TB_CCMDV
��ṹ����:Ԥ���˻ص�ȯ��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDV;
drop index AK_TB_CCMDV;
drop table TB_CCMDV;
create table TB_CCMDV  (
   CCMDV_ID             INTEGER                         not null,  /*�˻ص�ȯ��ϸID      */
   CCMDV001             INTEGER                                 ,  /*�˻ص�ID            */
   CCMDV002             INTEGER                                 ,  /*ȯ��ID              */
   CCMDV003             INTEGER                                 ,  /*ȯ���ID            */
   CCMDV004             NUMBER(12,2)                            ,  /*ȯ�����          */
   CCMDV005             NUMBER(30)                              ,  /*��ʼ����            */
   CCMDV006             NUMBER(30)                              ,  /*��������            */
   CCMDV007             NUMBER(12)                              ,  /*����                */
   CCMDV008             NUMBER(12,2)                            ,  /*ȯ���              */
   CCMDV009             NUMBER(22,2)                               /*Ԥ��ȯ�ۿ���(%)     */
   CCMDV010             NUMBER(22,2)                               /*�ۺ�ȯ���          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CCMDV primary key (CCMDV_ID)
);
create unique index AK_TB_CCMDV on TB_CCMDV (CCMDV001,CCMDV002,CCMDV003);
create sequence SEQ_TB_CCMDV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDV to public;
grant index  on TB_CCMDV to public;
grant update on TB_CCMDV to public; 
grant delete on TB_CCMDV to public;  
grant insert on TB_CCMDV to public; 
grant select on SEQ_TB_CCMDV to public;   
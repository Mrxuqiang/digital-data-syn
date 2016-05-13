/*
================================================================================
��ṹ����:TB_CCMDO
��ṹ����:Ԥ�浥ȯ��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDO;
drop index AK_TB_CCMDO;
drop table TB_CCMDO;
create table TB_CCMDO  (
   CCMDO_ID             INTEGER                         not null,  /*Ԥ�浥ȯ��ϸID      */
   CCMDO001             INTEGER                                 ,  /*Ԥ�浥ID            */
   CCMDO002             INTEGER                                 ,  /*ȯ��ID              */
   CCMDO003             INTEGER                                 ,  /*ȯ���ID            */
   CCMDO004             NUMBER(12,2)                            ,  /*ȯ�����          */
   CCMDO005             NUMBER(30)                              ,  /*��ʼ����            */
   CCMDO006             NUMBER(30)                              ,  /*��������            */
   CCMDO007             NUMBER(12)                              ,  /*����                */
   CCMDO008             NUMBER(12,2)                            ,  /*ȯ���              */
   CCMDO009             NUMBER(22,2)                               /*Ԥ��ȯ�ۿ���(%)     */ ADD OUWX 100606
   CCMDO010             NUMBER(22,2)                               /*�ۺ�ȯ���          */ ADD OUWX 100606
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CCMDO primary key (CCMDO_ID)
);
create unique index AK_TB_CCMDO on TB_CCMDO (CCMDO001,CCMDO002,CCMDO003);
create sequence SEQ_TB_CCMDO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDO to public;
grant index  on TB_CCMDO to public;
grant update on TB_CCMDO to public; 
grant delete on TB_CCMDO to public;  
grant insert on TB_CCMDO to public; 
grant select on SEQ_TB_CCMDO to public;   
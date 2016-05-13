/*
================================================================================
��ṹ����:TB_PUBCJ
��ṹ����:�ɹ����Ա�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PUBCJ;
drop index AK_TB_PUBCJ;
drop table TB_PUBCJ;
create table TB_PUBCJ  (
   PUBCJ_ID             INTEGER                         not null,  /* �ɹ�����ID        */
   PUBCJ001             VARCHAR2(1) ,                              /* ��������          */--1.��Ʒ2.Ʒ��3.ȫ��
   PUBCJ002             INTEGER,                                   /* ����ID            */
   PUBCJ003             INTEGER,                                   /* ����ID            */
   CREATE_USER          VARCHAR2(12),                              /* ������Ա          */
   USER_GROUP           VARCHAR2(12),                              /* ������Ա����      */                               
   CREATE_DATE          DATE,                                      /* ��������          */
   MODIFIER             VARCHAR2(12),                              /* �޸���Ա          */
   MODI_DATE            DATE,                                      /* �޸�����          */
   FLAG                 NUMBER,                                    /* ����״̬          */
   constraint PK_TB_PUBCJ primary key (PUBCJ_ID)
);
create sequence SEQ_TB_PUBCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCJ to public;
grant index  on TB_PUBCJ to public;
grant update on TB_PUBCJ to public; 
grant delete on TB_PUBCJ to public;  
grant insert on TB_PUBCJ to public; 
grant select on SEQ_TB_PUBCJ to public;   
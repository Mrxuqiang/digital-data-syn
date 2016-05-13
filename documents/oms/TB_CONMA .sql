/*
================================================================================
��ṹ����:TB_CONMA
��ṹ����:���ʦ��ͬ����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_CONMA;
drop index AK_TB_CONMA;
drop table TB_CONMA;
create table TB_CONMA  (
   CONMA_ID             INTEGER                         not null,  /*���ʦ��ͬID      */
   CONMA001             VARCHAR2(30)                    not null,  /*���ʦ��ͬ���    */
   CONMA002             NUMBER(5,0)                     not null,  /*�汾��            */
   CONMA003             VARCHAR2(30)                    not null,  /*ֽ�ƺ�ͬ���      */
   CONMA004             INTEGER                         not null,  /*ǩԼ��˾          */
   CONMA005             INTEGER                         not null,  /*ǩԼ��            */
   CONMA006             INTEGER                         not null,  /*ǩԼ���ʦ        */
   CONMA007             VARCHAR2(255),                             /*ǩԼ�ص�         */ 
   CONMA008             DATE                            not null,  /*ǩԼ����          */
   CONMA009             DATE                            not null,  /*��ͬ��ֹ����      */
   CONMA010             DATE                                    ,  /*��ͬ��ֹ����      */
   CONMA011             INTEGER,                        not null,  /*¼����ID          */
   CONMA012             VARCHAR2(1)                     not null,  /*��ͬ״̬          */--1.δ��� 2.��� 3.��ֹ
   CONMA013             DATE,                                      /*¼������          */
   CONMA014             INTEGER,                                   /*�����ID          */
   CONMA015             DATE,                                      /*�������          */
   CONMA016             INTEGER,                                   /*��ֹ��            */
   CONMA017             VARCHAR2(1)                     not null,  /*��������          */--1.��2.��3.����4.��
   CONMA018             VARCHAR2(255),                             /*��ע              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER,                                 /*����״̬          */
   constraint PK_TB_CONMA primary key (CONMA_ID)
);
create unique index AK_TB_CONMA on TB_CONMA (CONMA001,CONMA002,FALG);
create sequence SEQ_TB_CONMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONMA to public;
grant index  on TB_CONMA to public;
grant update on TB_CONMA to public; 
grant delete on TB_CONMA to public;  
grant insert on TB_CONMA to public; 
grant select on SEQ_TB_CONMA to public;   
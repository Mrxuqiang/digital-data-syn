/*
================================================================================
��ṹ����:TB_RECAC
��ṹ����:Ӧ��ֱ���տ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECAC;
drop index AK_TB_RECAC;
drop table TB_RECAC;
create table TB_RECAC  (
   RECAC_ID             INTEGER                         not null,  /*Ӧ���տ�ID            */
   RECAC001             INTEGER                         not null,  /*Ӧ�յ���ID            */
   RECAC002             VARCHAR2(1)                     not null,  /*����                  */
   RECAC003             VARCHAR2(1),                               /*�տʽ              */
   RECAC004             INTEGER ,                                  /*Ԥ�տ��ID            */
   RECAC005             INTEGER ,                                  /*�տ��ID              */
   RECAC006             NUMBER(16,2) ,                             /*ԭ���տ���              */
   RECAC007             VARCHAR2(30),                              /*ˢ������              */
   RECAC008             INTEGER,                                   /*��������              */
   RECAC009             INTEGER,                                   /*�����˺�ID              */
   RECAC010             VARCHAR2(30),                              /*֧Ʊ                  */
   RECAC011             INTEGER,                                   /*���ñ���ID              */
   RECAC012             NUMBER(16,2),                              /*�˿���              */
   RECAC013             NUMBER(16,2) ,                             /*�ѳ���              */
   RECAC014             NUMBER(16,2),                              /*�˿����              */
   RECAC015             INTEGER                         not null,  /*��֧�춯��ID            */ 
   RECAC016             INTEGER,                                   /*��ƿ�ĿID           */     
   RECAC017             VARCHAR2(30) ,                             /*Ԥ���ֶ�               */   
   RECAC018             NUMBER(16,2),                              /*�����տ���                 */  
   RECAC019             NUMBER(16,2),                              /*������              */ 
   RECAC020             INTEGER,                                   /*Ӫ����֯ID             */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_RECAC primary key (RECAC_ID)
);
create sequence SEQ_TB_RECAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAC to public;
grant index  on TB_RECAC to public;
grant update on TB_RECAC to public; 
grant delete on TB_RECAC to public;  
grant insert on TB_RECAC to public; 
grant select on SEQ_TB_RECAC to public;   
/*
================================================================================
��ṹ����:TB_BILAL
��ṹ����:�����˿����뵥�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_BILAL;
drop index AK_TB_BILAL;
drop table TB_BILAL;
create table TB_BILAL  (
   BILAL_ID             INTEGER                         not null,  /*���뵥��id         */
   BILAL001             INTEGER                         not null,  /*���뵥��id         */
   BILAL002             INTEGER                         not null,  /*�̻�id             */   
   BILAL003             VARCHAR2(60),                              /*�̻���             */  
   BILAL004             VARCHAR2(80),                              /*�̻�����           */  
   BILAL005             INTEGER,                                   /*չλid             */         
   BILAL006             VARCHAR2(60),                              /*չλ��             */
   BILAL007             VARCHAR2(100),                             /*���ƺ�             */
   BILAL008             INTEGER,                                   /*Ʒ��id             */
   BILAL009             VARCHAR2(30),                              /*Ʒ�ƺ�             */
   BILAL010             VARCHAR2(60),                              /*Ʒ������           */
   BILAL011             VARCHAR2(30),                              /*���õ���           */
   BILAL012             DATE,                                      /*��������           */
   BILAL013             INTEGER,                                   /*����id             */
   BILAL014             VARCHAR2(8),                               /*���ñ���           */
   BILAL015             VARCHAR2(30),                              /*��������           */
   BILAL016             VARCHAR2(16),                              /*��˾����           */
   BILAL017             NUMBER(22,2),                              /*���ý��           */
   BILAL018             NUMBER(22,2),                              /*δ�ս��           */
   BILAL019             NUMBER(22,2),                              /*�����տ���       */
   BILAL020             DATE,                                      /*��������           */
   BILAL021             DATE,                                      /*����ֹ��           */
   BILAL022             VARCHAR2(255),                             /*��ע               */
   BILAL023             NUMBER(22,2),                              /*ʵ�ʿۿ���       */
   BILAL024             VARCHAR2(255),                             /*�ۿ�˵��           */
   BILAL025             VARCHAR2(30),                              /*�տ��           */
   BILAL026             NUMBER(22,2),                              /*���ʱδ�ս��     */
   BILAL027             INTEGER,                                   /*���õ���id         */
   BILAL028             INTEGER,                                   /*���õ���id         */
   BILAL029             INTEGER,                                   /*�տ��id         */                            
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_BILAL primary key (BILAL_ID)
);
create unique index AK_TB_BILAL on TB_BILAL (BILAL001,BILAL027,BILAL028,flag);
create sequence SEQ_TB_BILAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAL to public;
grant index  on TB_BILAL to public;
grant update on TB_BILAL to public; 
grant delete on TB_BILAL to public;  
grant insert on TB_BILAL to public; 
grant select on SEQ_TB_BILAL to public;   
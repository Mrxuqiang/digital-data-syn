/*
================================================================================
��ṹ����:TB_AWBAE
��ṹ����:ƾ֤��¼ģ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAE;
drop index AK_TB_AWBAE;
drop table TB_AWBAE;
create table TB_AWBAE  (
   AWBAE_ID             INTEGER                         not null,  /*ƾ֤��¼ģ���ID          */
   AWBAE001             INTEGER                         not null,  /*ƾ֤ģ��ID                */
   AWBAE002             VARCHAR2(200),                             /*ժҪ��ʽ                  */  
   AWBAE003             INTEGER,                                   /*��Ŀ����ID                */
   AWBAE004             NUMBER(1),                                 /*�������                  */
   AWBAE005             VARCHAR2(200),                             /*���ֹ�ʽ                  */
   AWBAE006             VARCHAR2(200),                             /*���ʹ�ʽ                  */   
   AWBAE007             VARCHAR2(200),                             /*ԭ�ҹ�ʽ                  */
   AWBAE008             VARCHAR2(200),                             /*���ҹ�ʽ                  */
   AWBAE009             VARCHAR2(255),                             /*��ע                      */ 
   AWBAE010             VARCHAR2(200),                             /*ժҪ��ʽ����              */   
   AWBAE011             VARCHAR2(200),                             /*���ֹ�ʽ����               */
   AWBAE012             VARCHAR2(200),                             /*���ʹ�ʽ����               */  
   AWBAE013             VARCHAR2(200),                             /*ԭ�ҹ�ʽ����               */   
   AWBAE014             VARCHAR2(200),                             /*���ҹ�ʽ����              */                     
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_AWBAE primary key (AWBAE_ID)
);
create sequence SEQ_TB_AWBAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAE to public;
grant index  on TB_AWBAE to public;
grant update on TB_AWBAE to public; 
grant delete on TB_AWBAE to public;  
grant insert on TB_AWBAE to public; 
grant select on SEQ_TB_AWBAE to public;   
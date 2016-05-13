/*
================================================================================
��ṹ����:TB_GRTAC
��ṹ����:����ģ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAC;
drop index AK_TB_GRTAC;
drop table TB_GRTAC;
create table TB_GRTAC  (
   GRTAC_ID             INTEGER                         not null,  /*����ģ����ID        */
   GRTAC001             INTEGER                         not null,  /*����ģ����ID        */   
   GRTAC002             VARCHAR2(1),                               /*�������            */
   GRTAC003             NUMBER(4),                                 /*������ϵ��λ��      */
   GRTAC004             INTEGER,                                   /*������Ŀ����        */
   GRTAC005             VARCHAR2(2000),                            /*������ʽ          */  
   GRTAC006             VARCHAR2(1),                               /*�Ƿ��������Ŀ    */         
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_GRTAC primary key (GRTAC_ID)
);
create sequence SEQ_TB_GRTAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAC to public;
grant index  on TB_GRTAC to public;
grant update on TB_GRTAC to public; 
grant delete on TB_GRTAC to public;  
grant insert on TB_GRTAC to public; 
grant select on SEQ_TB_GRTAC to public;   
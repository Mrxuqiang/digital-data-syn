/*
================================================================================
��ṹ����:TB_DRPAC
��ṹ����:����ģ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAC;
drop index AK_TB_DRPAC;
drop table TB_DRPAC;
create table TB_DRPAC  (
   DRPAC_ID             INTEGER                         not null,  /*����ģ����ID        */
   DRPAC001             INTEGER                         not null,  /*����ģ����ID        */   
   DRPAC002             VARCHAR2(1),                               /*�������            */
   DRPAC003             NUMBER(4),                                 /*������ϵ��λ��      */
   DRPAC004             INTEGER,                                   /*������Ŀ����        */
   DRPAC005             VARCHAR2(2000),                            /*������ʽ          */  
   DRPAC006             VARCHAR2(1),                               /*�Ƿ��������Ŀ    */         
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_DRPAC primary key (DRPAC_ID)
);
create sequence SEQ_TB_DRPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAC to public;
grant index  on TB_DRPAC to public;
grant update on TB_DRPAC to public; 
grant delete on TB_DRPAC to public;  
grant insert on TB_DRPAC to public; 
grant select on SEQ_TB_DRPAC to public;   
/*
================================================================================
��ṹ����:TB_AWBAF
��ṹ����:ƾ֤ģ�帨�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAF;
drop index AK_TB_AWBAF;
drop table TB_AWBAF;
create table TB_AWBAF  (
   AWBAF_ID             INTEGER                         not null,  /*ƾ֤ģ�帨����ID       */
   AWBAF001             INTEGER,                                   /*ƾ֤ģ��ID             */
   AWBAF002             INTEGER,                                   /*����������ID            */  
   AWBAF003             VARCHAR2(200),                             /*�����ʽ             */ 
   AWBAF004             VARCHAR2(200),                             /*�����ʽ����             */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_AWBAF primary key (AWBAF_ID)
);
create unique index AK_TB_AWBAF on TB_AWBAF (AWBAF001,AWBAF002);
create sequence SEQ_TB_AWBAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAF to public;
grant index  on TB_AWBAF to public;
grant update on TB_AWBAF to public; 
grant delete on TB_AWBAF to public;  
grant insert on TB_AWBAF to public; 
grant select on SEQ_TB_AWBAF to public;   
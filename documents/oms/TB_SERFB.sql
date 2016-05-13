/*
================================================================================
��ṹ����:TB_SERFB
��ṹ����:�Ĵ浥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFB;
drop index AK_TB_SERFB;
drop table TB_SERFB;
create table TB_SERFB  (
   SERFB_ID             INTEGER                      not null,     /*�Ĵ���ϸID                */  
   SERFB001             INTEGER                      not null,     /*�Ĵ浥ID                  */  
   SERFB002             INTEGER                      not null,     /*��Դ��ID                  */  
   SERFB003             INTEGER                      not null,     /*��Դ����ϸID              */  
   SERFB004             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFB005             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFB006             INTEGER                                    /*ά��1                     */  
   SERFB007             INTEGER                                    /*ά��2                     */  
   SERFB008             INTEGER                                    /*ά��3                     */  
   SERFB009             INTEGER                                    /*ά��4                     */  
   SERFB010             INTEGER                                    /*ά��5                     */  
   SERFB011             INTEGER                      not null,     /*���ⵥλ                  */  
   SERFB012             NUMBER(12,2)                 not null,     /*��λ������                */  
   SERFB013             NUMBER(18,3)                 not null,     /*�Ĵ���                    */  
   SERFB014             NUMBER(18,3)                 not null,     /*��������                  */ 
   SERFB015             VARCHAR2(1)                  not null,     /*��Ʒ��������              */ 
   SERFB016             VARCHAR2(25)                               /*��ע                      */
   SERFB017             NUMBER(18,3)                 not null,     /*�ɼĴ���                  */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_SERFB primary key (SERFB_ID)
);
create index AK_TB_SERFB on TB_SERFB (SERFB_ID,SERFB002,SERFB005);
create sequence SEQ_TB_SERFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFB to public;
grant index  on TB_SERFB to public;
grant update on TB_SERFB to public; 
grant delete on TB_SERFB to public;  
grant insert on TB_SERFB to public; 
grant select on SEQ_TB_SERFB to public;   
/*
================================================================================
��ṹ����:TB_SALHS
��ṹ����:��ƹ������ۼƻ������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHS;
drop index AK_TB_SALHS;
drop table TB_SALHS;
create table TB_TB_SALHS  (
   SALHS_ID             INTEGER                        not null,   /*��ƹ������ۼƻ������ӱ�ID  */
   SALHS001             INTEGER                        not null,   /*��ƹ������ۼƻ�ID          */
   SALHS002             INTEGER                        not null,   /*��ƹ������ۼƻ���ϸID      */
   SALHS003             INTEGER                        not null,   /*��Ʒ����                    */
   SALHS004             NUMBER(18,2),                              /*������֤Ŀ��            */
   SALHS005             NUMBER(18,2),                              /*�������ܶ�Ŀ��            */
   SALHS006             NUMBER(18,2),                              /*�ͻ���֤Ŀ��            */
   SALHS007             NUMBER(18,2),                              /*�ͻ����ܶ�Ŀ��Ŀ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                          
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER,                                    /*����״̬                    */
   constraint PK_TB_SALHS primary key (SALHS_ID)
);
create unique index AK_TB_SALHS on TB_SALHS (SALHS002,SALHS003,FLAG);
create sequence SEQ_TB_SALHS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHS to public;
grant index  on TB_SALHS to public;
grant update on TB_SALHS to public; 
grant delete on TB_SALHS to public;  
grant insert on TB_SALHS to public; 
grant select on SEQ_TB_SALHS to public;   
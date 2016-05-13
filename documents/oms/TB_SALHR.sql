/*
================================================================================
��ṹ����:TB_SALHR
��ṹ����:��ƹ������ۼƻ���ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHR;
drop index AK_TB_SALHR;
drop table TB_SALHR;
create table TB_TB_SALHR  (
   SALHR_ID             INTEGER                        not null,   /*��ƹ������ۼƻ���ϸID      */
   SALHR001             INTEGER                        not null,   /*��ƹ������ۼƻ�ID          */
   SALHR002             INTEGER                        not null,   /*��ƹ���                    */
   SALHR003             NUMBER(18,2),                              /*������֤Ŀ��            */
   SALHR004             NUMBER(18,2),                              /*�������ܶ�Ŀ��            */
   SALHR005             NUMBER(18,2),                              /*�ͻ���֤Ŀ��            */
   SALHR006             NUMBER(18,2),                              /*�ͻ����ܶ�Ŀ��Ŀ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                          
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER,                                    /*����״̬                    */
   constraint PK_TB_SALHP primary key (SALHR_ID)
);
create unique index AK_TB_SALHR on TB_SALHR (SALHR002,FLAG);
create sequence SEQ_TB_SALHR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHR to public;
grant index  on TB_SALHR to public;
grant update on TB_SALHR to public; 
grant delete on TB_SALHR to public;  
grant insert on TB_SALHR to public; 
grant select on SEQ_TB_SALHR to public;   
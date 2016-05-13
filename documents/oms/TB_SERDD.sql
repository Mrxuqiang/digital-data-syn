/*
================================================================================
��ṹ����:TB_SERDD
��ṹ����:�����ֵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERDD;
drop index AK_TB_SERDD;
drop table TB_SERDD;
create table TB_SERDD  (
   SERDD_ID           INTEGER                          not null,         /*��ֵ����ID        */   
   SERDD001           VARCHAR2(30)                     not null,         /*��ֵ���          */   
   SERDD002           VARCHAR2(30)                     not null,         /*��ֵ����          */   
   SERDD003           INTEGER                          not null,         /*��Ʒ���          */   
   SERDD004           NUMBER(12,2),                                      /*��װ��ֵ ��       */   
   SERDD005           NUMBER(12,2),                                      /*��װ��ֵ ֹ       */   
   SERDD006           NUMBER(12,2),                                      /*��װ��ֵ ��       */   
   SERDD007           NUMBER(12,2),                                      /*��װ��ֵ ֹ       */   
   SERDD008           NUMBER(12,2),                                      /*���˷�ֵ ��       */   
   SERDD009           NUMBER(12,2),                                      /*���˷�ֵ ֹ       */   
   SERDD010           NUMBER(12,2),                                      /*��װ��ֵ ��       */   
   SERDD011           NUMBER(12,2),                                      /*��װ��ֵ ֹ       */   
   SERDD012           NUMBER(12,2),                                      /*ж����ֵ ��       */   
   SERDD013           NUMBER(12,2),                                      /*ж����ֵ ֹ       */   
   SERDD014           NUMBER(12,2),                                      /*���������ֵ ��   */   
   SERDD015           NUMBER(12,2),                                      /*���������ֵ ֹ   */   
   SERDD016           NUMBER(12,2),                                      /*ά��ά�޷�ֵ ��   */   
   SERDD017           NUMBER(12,2),                                      /*ά��ά�޷�ֵ ֹ   */   
   SERDD018           NUMBER(12,2),                                      /*������ֵ ��       */   
   SERDD019           NUMBER(12,2),                                      /*������ֵ ֹ       */   
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_SERDD primary key (SERDD_ID)
);
create unique index AK_TB_SERDD on TB_SERDD (SERDD001,SERDD003);
create sequence SEQ_TB_SERDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDD to public;
grant index  on TB_SERDD to public;
grant update on TB_SERDD to public; 
grant delete on TB_SERDD to public;  
grant insert on TB_SERDD to public; 
grant select on SEQ_TB_SERDD to public;   
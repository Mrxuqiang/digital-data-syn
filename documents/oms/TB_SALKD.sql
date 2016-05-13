/*
================================================================================
��ṹ����:TB_SALKD
��ṹ����:�������ָ���ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALKD;
drop index AK_TB_SALKD;
drop table TB_SALKD;
create table TB_SALKD  (
   SALKD_ID             INTEGER                         not null,      /*�������ָ����ϸID */
   SALKD001             INTEGER                         not null,      /*�������ָ������ID */
   SALKD002             INTEGER                         not null,      /*����ԱID           */
   SALKD003             NUMBER(28,3)                            ,      /*1�·�ָ��          */
   SALKD004             NUMBER(28,3)                            ,      /*2�·�ָ��          */
   SALKD005             NUMBER(28,3)                            ,      /*3�·�ָ��          */
   SALKD006             NUMBER(28,3)                            ,      /*4�·�ָ��          */
   SALKD007             NUMBER(28,3)                            ,      /*5�·�ָ��          */
   SALKD008             NUMBER(28,3)                            ,      /*6�·�ָ��          */
   SALKD009             NUMBER(28,3)                            ,      /*7�·�ָ��          */
   SALKD010             NUMBER(28,3)                            ,      /*8�·�ָ��          */
   SALKD011             NUMBER(28,3)                            ,      /*9�·�ָ��          */
   SALKD012             NUMBER(28,3)                            ,      /*10�·�ָ��         */
   SALKD013             NUMBER(28,3)                            ,      /*11�·�ָ��         */
   SALKD014             NUMBER(28,3)                            ,      /*12�·�ָ��         */
   SALKD015             NUMBER(28,3)                            ,      /*�ϼ�               */
   SALKD016             VARCHAR2(255),                                 /*��ע               */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա           */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����       */                               
   CREATE_DATE          DATE,                                          /*��������           */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա           */
   MODI_DATE            DATE,                                          /*�޸�����           */
   FLAG                 NUMBER,                                        /*����״̬           */
   constraint PK_TB_SALKD primary key (SALKD_ID)
);
create unique index AK_TB_SALKD on TB_SALKD (SALKD001,SALKD002,FLAG);
create sequence SEQ_TB_SALKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALKD to public;
grant index  on TB_SALKD to public;
grant update on TB_SALKD to public; 
grant delete on TB_SALKD to public;  
grant insert on TB_SALKD to public; 
grant select on SEQ_TB_SALKD to public;   
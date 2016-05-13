/*
================================================================================
��ṹ����:TB_SALCH
��ṹ����:�˿����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALCH;
drop index AK_TB_SALCH;
drop table TB_SALCH;
create table TB_SALCH  (
   SALCH_ID             INTEGER                         not null,  /*�˿ID         */
   SALCH001             INTEGER                         not null,  /*����             */
   SALCH002             VARCHAR2(30)                    not null,  /*�˿��         */
   SALCH003             DATE                            not null,  /*�˿�����         */
   SALCH004             VARCHAR2(1)                     not null,  /*�˿�����         */
   SALCH005             INTEGER                         not null,  /*������ID         */
   SALCH006             INTEGER,                                   /*�˿�ƾ֤����ID   */
   SALCH007             NUMBER(12),                                /*�˿�ƾ֤��       */
   SALCH008             INTEGER                         not null,  /*�˿�ԱID         */
   SALCH009             VARCHAR2(255),                             /*��ע             */
   SALCH010             NUMBER(12,2)                    not null,  /*�˿���         */
   SALCH011             NUMBER(12,2),                              /*�ۿۿۼ����     */
   SALCH012             NUMBER(12,2)                    not null,  /*Ӧ�˿���       */
   SALCH013             NUMBER(12,2)                    not null,  /*ʵ�˿���       */
   SALCH014             NUMBER(12,2),                              /*���˽��         */
   SALCH015             NUMBER(12,2),                              /*���οۻ���       */
   SALCH016             VARCHAR2(30),                   not null,  /*��������         */
   SALCH017             INTEGER                         not null,  /*Ӫ����֯ID       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALCH primary key (SALCH_ID)
);
create unique index AK_TB_SALCH on TB_SALCH (SALCH002,SALCH017);
create sequence SEQ_TB_SALCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCH to public;
grant index  on TB_SALCH to public;
grant update on TB_SALCH to public; 
grant delete on TB_SALCH to public;  
grant insert on TB_SALCH to public; 
grant select on SEQ_TB_SALCH to public;   
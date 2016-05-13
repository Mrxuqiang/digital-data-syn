
/*
================================================================================
��ṹ����:TB_SALCR
��ṹ����:������Ʒ�ۿ۱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALCR;
drop index AK_TB_SALCR;
drop table TB_SALCR;
create table TB_SALCR  (
   SALCR_ID             INTEGER                         not null,  /*������Ʒ�ۿ�ID				        */
   SALCR001             VARCHAR2(1)                     not null,  /*��������1.���۶��� 2.���۵� 3.�������� 4.����      */
   SALCR002             INTEGER                         not null,  /*��Դ����ID                                         */
   SALCR003             INTEGER,                                   /*��Դ������Ʒ��ϸID                                 */
   SALCR004             INTEGER,                                   /*�����ID                                         */
   SALCR005             NUMBER(12,2),                              /*����/�˿���                                      */
   SALCR006             NUMBER(12,2),                              /*����������                                       */
   SALCR007             NUMBER(12,2),                              /*��Ʒ�ؼ�                                           */
   SALCR008             NUMBER(12,2),                              /*��Ʒ�ۿ�                                           */
   SALCR009             NUMBER(12,2),                              /*��Ʒ���                                           */
   SALCR010             NUMBER(12,2),                              /*��Ʒ����                                           */
   SALCR011             NUMBER(12,2),                              /*�����ۿ�                                           */
   SALCR012             NUMBER(12,2),                              /*���ȯ                                           */
   SALCR013             NUMBER(12,2),                              /*�ۼƷ�ȯ                                           */
   SALCR014             NUMBER(12,2),                              /*�ۼ�����                                           */
   SALCR015             INTEGER,                                   /*���Ż��յ�ID                                       */
   SALCR016             DATE,                                      /*��������                                           */
   SALCR017             INTEGER,                                   /*������ID                                           */
   SALCR018             VARCHAR2(2),                               /*��������                                           */
   SALCR019             VARCHAR2(30),                              /*���Ż��յ���                                       */
   SALCR020             INTEGER,                                   /*��ԴӪ����֯ID                                     */
   SALCR021             VARCHAR2(1),                               /*��������1.�������� 2.����ת��			*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                       */                               
   CREATE_DATE          DATE,                                      /*��������                                           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                           */
   MODI_DATE            DATE,                                      /*�޸�����                                           */
   FLAG                 NUMBER(1),                                 /*����״̬                                           */
   constraint PK_TB_SALCR primary key (SALCR_ID)
);
create index AK_TB_SALCR on TB_SALCR (SALCR001,SALCR002,SALCR003,SALCR004,SALCR017,SALCR018,SALCR021);
create sequence SEQ_TB_SALCR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCR to public;
grant index  on TB_SALCR to public;
grant update on TB_SALCR to public; 
grant delete on TB_SALCR to public;  
grant insert on TB_SALCR to public; 
grant select on SEQ_TB_SALCR to public;   
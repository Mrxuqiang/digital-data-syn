/*
================================================================================
��ṹ����:TB_SALCB
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALCB;
drop index AK_TB_SALCB;
drop table TB_SALCB;
create table TB_SALCB  (
   SALCB_ID             INTEGER                         not null,  /*�������ID     */
   SALCB001             INTEGER                         not null,  /*���ID         */
   SALCB002             INTEGER                         not null,  /*���㷽ʽID       */
   SALCB003             NUMBER(12,2)                    not null,  /*ʵ������       */
   SALCB004             NUMBER(12,2),                              /*������           */
   SALCB005             NUMBER(12,2),                              /*���ս��         */
   SALCB006             VARCHAR2(30),                              /*���п���         */
   SALCB007             INTEGER,                                   /*��������ID       */
   SALCB008             NUMBER(12,2),                              /*��������(%)      */
   SALCB009             VARCHAR2(30),                              /*֧Ʊ��           */
   SALCB010             NUMBER(12,2),                              /*Ʊ����         */
   SALCB011             DATE,                                      /*��Ʊ����         */
   SALCB012             VARCHAR2(60),                              /*��Ʊ��λ         */
   SALCB013             INTEGER,                                   /*����ȯ�ִ���ID   */
   SALCB014             INTEGER,                                   /*����ȯ������ID */
   SALCB015             NUMBER(30),                                /*��ʼȯ��         */
   SALCB016             NUMBER(30),                                /*����ȯ��         */
   SALCB017             NUMBER(8),                                 /*ȯ����           */
   SALCB018             NUMBER(30),                                /*����ȯ����       */
   SALCB019             INTEGER,                                   /*����ȯ������ID   */
   SALCB020             NUMBER(30),                                /*���ѿ���         */
   SALCB021             INTEGER,                                   /*Ԥ�տID       */
   SALCB022             INTEGER,                                   /*Ԥ�տ��ϸID   */
   SALCB023             NUMBER(12,2),                              /*�����ѷ����     */
   SALCB024             NUMBER(12,2),                              /*����δ�����     */
   SALCB025             NUMBER(12,2),                              /*�������ѷ����   */
   SALCB026             NUMBER(12,2),                              /*������δ�����   */
   SALCB027             INTEGER,                                   /*����ID         */
   SALCB028             VARCHAR2(1),                               /*��������1.�������� 2.����ת�� */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALCB primary key (SALCB_ID)
);
create index AK_TB_SALCB on TB_SALCB (SALCB_ID,SALCB001,SALCB002,SALCB028);
create sequence SEQ_TB_SALCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCB to public;
grant index  on TB_SALCB to public;
grant update on TB_SALCB to public; 
grant delete on TB_SALCB to public;  
grant insert on TB_SALCB to public; 
grant select on SEQ_TB_SALCB to public;   
/*
================================================================================
��ṹ����:TB_SALBK
��ṹ����:���۵���ͬ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBK;
drop index AK_TB_SALBK;
drop table TB_SALBK;
create table TB_SALBK  (
   SALBK_ID             INTEGER                         not null,  /*���۵���ͬID     */
   SALBK001             INTEGER                         not null,  /*���۵�ID         */
   SALBK002             DATE,                                      /*ǩԼ����         */
   SALBK003             VARCHAR2(30),                              /*�̻�ǩԼ����     */
   SALBK004             NUMBER(12,2),                              /*װ�����         */
   SALBK005             VARCHAR2(30),                              /*����             */
   SALBK006             VARCHAR2(30),                              /*�а���ʽ         */
   SALBK007             VARCHAR2(30),                              /*��������         */
   SALBK008             DATE,                                      /*��������         */
   SALBK009             DATE,                                      /*��������         */
   SALBK010             DATE,                                      /*��������         */
   SALBK011             VARCHAR2(80),                              /*���̵�ַ         */
   SALBK012             VARCHAR2(80),                              /*�˿��ͻ���ַ     */
   SALBK013             VARCHAR2(30),                              /*����             */
   SALBK014             VARCHAR2(30),                              /*�ֻ�             */
   SALBK015             INTEGER,                                   /*�ؼ���ID         */
   SALBK016             NUMBER(12,2),                              /*һ�ڸ�������θ����     */
   SALBK017             NUMBER(12,2),                              /*���ڸ����������     */
   SALBK018             NUMBER(12,2),                              /*���ڸ�����     */
   SALBK019             NUMBER(12,2),                              /*���ڸ�����     */
   SALBK020             VARCHAR2(255),                             /*��ע             */
   SALBK021             VARCHAR2(30),                              /*�ͻ�����         */
   SALBK022             VARCHAR2(30),                              /*���ʦ           */
   SALBK023             VARCHAR2(30),                              /*��ͼԱ           */
   SALBK024             VARCHAR2(30),                              /*Ԥ��Ա           */
   SALBK025             VARCHAR2(30),                              /*��Ŀ����         */
   SALBK026             VARCHAR2(30),                              /*��Ŀ����         */
   SALBK027             VARCHAR2(30),                              /*�ʼ칤��ʦ       */
   SALBK028             VARCHAR2(30),                              /*���ʦ           */
   SALBK029             DATE,                                      /*��ƺ�ͬǩԼ���� */
   SALBK030             NUMBER(12,2),                              /*��Ʒ�           */
   SALBK031             NUMBER(12,2),                              /*�����           */
   SALBK032             NUMBER(12,2),                              /*���Ŀ�           */
   SALBK033             NUMBER(12,2),                              /*���Ŀ�           */
   SALBK034             NUMBER(12,2),                              /*��ƺ�ͬ�ܽ��   */
   SALBK035             DATE,                                      /*��������         */
   SALBK036             NUMBER(12,2),                              /*�˿��ۼƼӿ�     */
   SALBK037             NUMBER(12,2),                              /*������Ʒ�       */
   SALBK038             NUMBER(12,2),                              /*�����˹���       */
   SALBK039             NUMBER(12,2),                              /*��������       */
   SALBK040             NUMBER(12,2),                              /*����˰��         */
   SALBK041             NUMBER(12,2),                              /*���㸨�Ŀ�       */
   SALBK042             NUMBER(12,2),                              /*�������Ŀ�       */
   SALBK043             NUMBER(12,2),                              /*�˿ͽ����ܽ��   */
   SALBK044             INTEGER,                                   /*С��ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALBK primary key (SALBK_ID)
);
create index AK_TB_SALBK on TB_SALBK (SALBK001);
create sequence SEQ_TB_SALBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBK to public;
grant index  on TB_SALBK to public;
grant update on TB_SALBK to public; 
grant delete on TB_SALBK to public;  
grant insert on TB_SALBK to public; 
grant select on SEQ_TB_SALBK to public;   
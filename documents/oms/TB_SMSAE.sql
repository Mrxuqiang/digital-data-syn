/*
================================================================================
��ṹ����:TB_SMSAE
��ṹ����:��������ִ�б�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAE;
drop index AK_TB_SMSAE;
drop table TB_SMSAE;
create table TB_SMSAE  ( 
   SMSAE001            INTEGER,                                     /*����ִ������     */  ϵͳ�Զ����� 
   SMSAE002            INTEGER,                                     /*�������񵥺�     */  jobʵ��ִ�е����񵥺�
   SMSAE003            VARCHAR2(255),                               /*�����������     */  ����jobִ�е����񵥺��ҵ���Ӧ���������
   SMSAE004            VARCHAR2(6),                                 /*��������㼶     */  ����jobִ�е����񵥺��ҵ���Ӧ������㼶
   SMSAE005            DATE,                                        /*��ʼ����         */  ��ʾjobʵ�ʿ�ʼִ�е�ϵͳ���ڣ�ϵͳ�Զ���ֵ
   SMSAE006            DATE,                                        /*��ʼʱ��         */  ��ʾjobʵ�ʿ�ʼִ�е�ϵͳʱ���룬ϵͳ�Զ���ֵ
   SMSAE007            DATE,                                        /*��������         */  ��ʾjobʵ��ִ�н�����ϵͳ���ڣ�ϵͳ�Զ���ֵ
   SMSAE008            DATE,                                        /*����ʱ��         */  ��ʾjobʵ��ִ�н�����ϵͳʱ���룬ϵͳ�Զ���ֵ
   SMSAE009            INTEGER,                                     /*��ʱ���룩       */  ����ʱ��-��ʼʱ�䣬���㵽��
   SMSAE010            INTEGER,                                     /*��������         */  ������ִ�������а�������ϸ����
   CREATE_USER         VARCHAR2(12),                                /*������Ա         */
   USER_GROUP          VARCHAR2(30),                                /*������Ա����     */                             
   CREATE_DATE         DATE,                                        /*��������         */
   MODIFIER            VARCHAR2(12),                                /*�޸���Ա         */
   MODI_DATE           DATE,                                        /*�޸�����         */
   FLAG                NUMBER,                                      /*����״̬         */
   constraint PK_TB_SMSAE primary key (SMSAE001)
);
create unique index AK_TB_SMSAE on TB_SMSAE (SMSAE001);
create sequence SEQ_TB_SMSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAE to public;
grant index  on TB_SMSAE to public;
grant update on TB_SMSAE to public; 
grant delete on TB_SMSAE to public;  
grant insert on TB_SMSAE to public; 
grant select on SEQ_TB_SMSAE to public;   
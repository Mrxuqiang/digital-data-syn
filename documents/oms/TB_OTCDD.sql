================================================================================
��ṹ����:TB_OTCDD
��ṹ����:�ͻ���װ�طõ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTCDD;
drop index AK_TB_OTCDD;
drop table TB_OTCDD;
create table TB_OTCDD  (
   OTCDD_ID             INTEGER                         not null,  /*�Զ�����ID           */
   OTCDD001             VARCHAR2(30),                   not null   /*�طõ���             */
   OTCDD002             DATE,                                      /*�ط�����             */
   OTCDD003             VARCHAR2(30),                              /*���۵���             */   
   OTCDD004             INTEGER,                                   /*�̳�                 */
   OTCDD005             INTEGER,                                   /*չλ��               */
   OTCDD006             INTEGER,                                   /*Ʒ��                 */
   OTCDD007             DATE,                                      /*��������             */
   OTCDD008             VARCHAR2(30),                              /*�˿�����             */
   OTCDD009             VARCHAR2(10),                              /*��ϵ�绰             */
   OTCDD010             DATE,                                      /*Լ���ͻ�����         */
   OTCDD011             DATE,                                      /*ʵ���ͻ�����         */
   OTCDD012             VARCHAR2(255),                             /*�ͻ���ַ             */
   OTCDD013             DATE,                                      /*�˿ͷ���Լ���ͻ����� */
   OTCDD014             DATE,                                      /*�˿ͷ���ʵ���ͻ����� */
   OTCDD015             NUMBER(4),                                 /*ʵ���ӳ�����         */
   OTCDD016             VARCHAR2(1),                               /*��Ʒ����             */  
   OTCDD017             VARCHAR2(1),                               /*�̳�������Ա����     */
   OTCDD018             VARCHAR2(1),                               /*չ��Ӫҵ��Ա�������� */
   OTCDD019             VARCHAR2(1),                               /*չ������Ա�������� */
   OTCDD020             VARCHAR2(255),                             /*��ע                 */
   OTCDD021             INTEGER,                                   /*�ط���               */
   OTCDD022             NUMBER(22,2),                              /*�⸶���             */ 
   OTCDD023             VARCHAR2(255),                             /*�⸶��Ϣ��ע         */   
   SY_STATE             VARCHAR2(1),                               /*״̬   0����ʾCC�����ش���1����ʾCC����ش� 9 �������ͬ��״̬cc�ϴ��������Ѵ���ERP��*/

   constraint PK_TB_OTCDD primary key (OTCDD_ID)
);
create unique index AK_TB_OTCDD on TB_OTCDD (OTCDD001,OTCDD004);
create sequence SEQ_TB_OTCDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTCDD to public;
grant index  on TB_OTCDD to public;
grant update on TB_OTCDD to public; 
grant delete on TB_OTCDD to public;  
grant insert on TB_OTCDD to public; 
grant select on SEQ_TB_OTCDD to public;   